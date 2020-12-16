
// (C) Copyright Rani Sharoni 2003.
// Permission to copy, use, modify, sell and distribute this software is 
// granted provided this copyright notice appears in all copies. This software 
// is provided "as is" without express or implied warranty, and with no claim 
// as to its suitability for any purpose.
//
// See http://www.boost.org for most recent version including documentation.

#ifndef BOOST_TT_IS_BASE_AND_DERIVED_HPP_INCLUDED
#define BOOST_TT_IS_BASE_AND_DERIVED_HPP_INCLUDED

#include "boost/type_traits/is_class.hpp"
#include "boost/type_traits/is_same.hpp"
#include "boost/type_traits/is_convertible.hpp"
#include "boost/type_traits/detail/ice_and.hpp"
#include "boost/type_traits/remove_cv.hpp"
#include "boost/config.hpp"

// should be the last #include
#include "boost/type_traits/detail/bool_trait_def.hpp"

namespace boost {

namespace detail {

#if !BOOST_WORKAROUND(__BORLANDC__, BOOST_TESTED_AT(0x570)) ¥
 && !BOOST_WORKAROUND(__SUNPRO_CC , BOOST_TESTED_AT(0x540)) ¥
 && !BOOST_WORKAROUND(__EDG_VERSION__, <= 238)
                             // The EDG version number is a lower estimate.
                             // It is not currently known which EDG version
                             // exactly fixes the problem.

/*************************************************************************

This version detects ambiguous base classes and private base classes
correctly, and was devised by Rani Sharoni.

Explanation by Terje Sletteb