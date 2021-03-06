% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setNodeModels.R
\name{setNodeModels}
\alias{setNodeModels}
\title{Set Node Properties Using Model Objects}
\usage{
setNodeModels(network, ...)
}
\arguments{
\item{network}{A \code{HydeNetwork} object}

\item{...}{Model objects to be incorporated into \code{network}}
}
\description{
Set node properties using pre-defined model objects.  Model 
  objects may be imported from other programs, but need to be valid 
  model objects with the additional restriction that the responses and 
  independent variables must be named nodes in the network.  This will 
  NOT create a network from a list of models.  For that, see 
  \code{HydeNetwork}
}
\examples{
data(PE, package="HydeNet")
Net <- HydeNetwork(~ wells + 
                     pe | wells + 
                     d.dimer | pregnant*pe + 
                     angio | pe + 
                     treat | d.dimer*angio + 
                     death | pe*treat) 
print(Net)

g1 <- lm(wells ~ 1, data=PE)
g2 <- glm(pe ~ wells, data=PE, family="binomial")
g3 <- lm(d.dimer ~ pe + pregnant, data=PE)
g4 <- xtabs(~ pregnant, data=PE)
g5 <- glm(angio ~ pe, data=PE, family="binomial")
g6 <- glm(treat ~ d.dimer + angio, data=PE, family="binomial")
g7 <- glm(death ~ pe + treat, data=PE, family="binomial")

Net2 <- setNodeModels(Net, g1, g2, g3, g4, g5, g6, g7) 
print(Net)

writeNetworkModel(Net, pretty=TRUE)
}
\author{
Jarrod Dalton and Benjamin Nutter
}
