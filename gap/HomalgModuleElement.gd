#############################################################################
##
##  HomalgModuleElement.gd                                   Modules package
##
##  Copyright 2011 Mohamed Barakat, University of Kaiserslautern
##
##  Declarations for module elements.
##
#############################################################################

# a new GAP-category:

##  <#GAPDoc Label="IsHomalgModuleElement">
##  <ManSection>
##    <Filt Type="Category" Arg="M" Name="IsHomalgElement"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      The &GAP; category of module elements.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareCategory( "IsHomalgModuleElement",
        IsHomalgElement );

####################################
#
# properties:
#
####################################

##  <#GAPDoc Label="IsElementOfIntegers">
##  <ManSection>
##    <Prop Arg="m" Name="IsElementOfIntegers"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      Check if the <A>m</A> is an element of the integers viewed as a module over itself.
##      <#Include Label="IsElementOfIntegers:example">
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareProperty( "IsElementOfIntegers",
        IsHomalgModuleElement );

####################################
#
# attributes:
#
####################################

####################################
#
# global functions and operations:
#
####################################

# global functions

DeclareOperation( "TheZeroElement",
        [ IsHomalgModule ] );

# constructors:

DeclareOperation( "HomalgModuleElement",
        [ IsHomalgMatrix, IsHomalgModule ] );

DeclareOperation( "HomalgModuleElement",
        [ IsString, IsHomalgModule ] );

DeclareOperation( "HomalgModuleElement",
        [ IsString, IsInt, IsInt, IsHomalgModule ] );

#DeclareOperation( "LT",
#        [ IsHomalgModuleElement, IsHomalgModuleElement ] );

#DeclareOperation( "LT",
#        [ IsInt, IsHomalgModuleElement ] );

#DeclareOperation( "LT",
#        [ IsHomalgModuleElement, IsInt ] );

# basic operations:

DeclareOperation( "HomalgRing",
        [ IsHomalgModuleElement ] );

DeclareOperation( "UnderlyingListOfRingElements",
        [ IsHomalgModuleElement ] );

DeclareOperation( "\*",
        [ IsInt, IsHomalgModuleElement ] );

