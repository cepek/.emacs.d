;;; create-basic-cmake-cxx-project.el --- A trivial C++ projects tool

;; Copyright (C) 2019  Ales Cepek <cepek@gnu.org>

;; Version: 0.90

;; This package is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This package is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

(defun create-basic-cmake-cxx-project ()
"Create basic cmake C++ project."
(defun project-name() 
    (file-name-nondirectory
    (directory-file-name
    (file-name-directory (buffer-file-name)))))
(interactive)
(erase-buffer)
(insert (format
"cmake_minimum_required(VERSION 3.5)

project(%s LANGUAGES CXX VERSION 1.0)

set(CMAKE_CXX_STANDARDS 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(%s main.cpp)\n"
(project-name)(project-name))))
