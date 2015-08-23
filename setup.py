# coding: utf-8
from setuptools import setup


setup (
    name = '',
    version = '',
    url = '',
    author = '',
    author_email = '',
    maintainer='',
    maintainer_email = '',
    description = '',
    long_description = open('README.rst', 'r').read(),
    license = 'MIT',
    classifiers = [
        # Examples
        'Development Status :: 4 - Beta',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.4',
        'Topic :: Utilities',
        'Operating System :: MacOS',
        'Operating System :: POSIX :: Linux',
    ],
    install_requires = [
        # required pip packages
    ],
    packages = [
        # Packages to include in this install directory
    ],
    package_data = {
        # Non-python files to include
    },
)
# To release a new version:
# python ./setup.py sdist upload
