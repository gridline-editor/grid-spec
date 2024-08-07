# Gridline Grid File Specification

## Table of Contents

- [Overview](#overview)

## Overview

This document describes Gridline's Grid binary file format.

The Grid File is the native file format for spreadsheets within Gridline. The 
purpose of the Grid file is to describe the graphical appearance of 
spreadsheets and store cell contents in a cross-platform and cross-application
manner.

## Syntax

This chapter discusses the data representation and structure of a Grid file on 
an object and file scope.

Grid files are comprised of a sequence of 8-bit bytes on an atomic level. When 
assembled by classification, the byte (or bytes) form tokens and assume meaning.

### Character Set

The Grid file characater set is a subset of the American Standard 
Code for Information Interchange (ASCII). Characters are divided into three 
categories: *text*, *delimiters*, and *whitespace*. These categories apply for all 
characters with the exception of those within strings and comments; in such cases, separate rules apply.
