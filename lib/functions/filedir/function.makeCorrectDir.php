<?php

/**
 * This file is part of the Froxlor project.
 * Copyright (c) 2003-2009 the SysCP Team (see authors).
 * Copyright (c) 2010 the Froxlor Team (see authors).
 *
 * For the full copyright and license information, please view the COPYING
 * file that was distributed with this source code. You can also view the
 * COPYING file online at http://files.froxlor.org/misc/COPYING.txt
 *
 * @copyright  (c) the authors
 * @author     Florian Lippert <flo@syscp.org> (2003-2009)
 * @author     Froxlor team <team@froxlor.org> (2010-)
 * @license    GPLv2 http://files.froxlor.org/misc/COPYING.txt
 * @package    Functions
 *
 */

/**
 * Function which returns a correct dirname, means to add slashes at the beginning and at the end if there weren't some
 *
 * @param string The dirname
 * @return string The corrected dirname
 * @author Florian Lippert <flo@syscp.org>
 */

function makeCorrectDir($dir)
{
	if(substr($dir, -1, 1) != '/')
	{
		$dir.= '/';
	}

	if(substr($dir, 0, 1) != '/')
	{
		$dir = '/' . $dir;
	}

	$dir = makeSecurePath($dir);
	return $dir;
}
