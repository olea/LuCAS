%define name 	imprenta-e
%define version	0.2
%define release 2

Name:		%{name}
Version:	%{version}
Release:	%{release}
Summary:	The TLDP-ES e-printer
Summary(es):	La imprenta-e de TLDP-ES
BuildArch: 	noarch
Epoch:		1
Group:		textprocessing/tools
License:	GPL
URL:		http://es.tldp.org
Source:		%{name}-%{version}.tar.gz
Packager:	Gaspar Oriol	<gaspar.oriol@hispalinux.es>
BuildRoot:      %{_tmppath}/%{name}-root

BuildRequires:  autoconf >= 2.52
BuildRequires:  automake16
Requires:	docbook-utils >= 0.6.11
Requires:	docbook-utils-pdf 
#Requires:	linuxdoc-tools
Requires:       sgml-tools
#Requires:	ghostscript
Requires:       libxslt
Requires:	cvs 
Requires:	perl >= 5.8.0
Requires:	perl-libxml-enno >= 1.02
Requires:	perl-XML-RSS >= 0.97
Requires:       perl-Unicode-MapUTF8 >= 1.09
Requires:       tar

Provides:	imprenta-e 
Provides: 	impresor-e
Provides:	perl(Utils::Utilsi)
Provides:	perl(Utils::XMLi)
Provides:	perl(Printer::DocBook)
Provides:	perl(Printer::DocBookXML)
Provides:	perl(Printer::Linuxdoc)
Provides:	imptrenta-e.1

%description
Imprenta-e is the tool for easy creation and maintenance of 
document's publishing formats

%description -l es
La imprenta-e es una herramienta para facilitar la creaci�n y
el mantenimiento de los formatos de publicaci�n de documentos.


%prep

%setup
%build
./configure --prefix=/usr  --sysconfdir=/etc
make
%install
%makeinstall

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%doc AUTHORS COPYING ChangeLog README TODO
%{_bindir}/imprenta-e
%{_bindir}/impresor-e
/etc/imprenta-e/imprenta-e.conf
/etc/imprenta-e/server.conf
%{_libdir}/imprenta-e-tools/*
%{_datadir}/imprenta-e/*
%{_datadir}//man/man1/*

%changelog
* Tue Jan 18 2004 Ismael Olea
- Correcciones

* Wed Nov 28 2003 Ismael Olea
- Modificaci�n del spec original de Gaspar para RH.
