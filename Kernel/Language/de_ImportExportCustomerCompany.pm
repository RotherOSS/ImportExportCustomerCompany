# --
# Copyright (C) 2012-2023 Znuny GmbH, http://znuny.com/
# Copyright (C) 2022-2023 OTOBO GmbH, http://otobo.de/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::de_ImportExportCustomerCompany;

use strict;
use warnings;
use utf8;

# --
sub Data {
    my $Self = shift;
    my $Lang = $Self->{Translation};
    return if ref $Lang ne 'HASH';

    # possible charsets
    $Self->{Charset} = [ 'utf-8', ];

    # $$START$$

    # translations missing in ImportExport...
    $Lang->{'CustomerCompany'}            = 'Kunden-Firma';
    $Lang->{'Column Seperator'}           = 'Spaltentrenner';
    $Lang->{'Charset'}                    = 'Zeichensatz';
    $Lang->{'Restrict export per search'} = 'Export mittels Suche einschränken';
    $Lang->{'Object backend module registration for the import/export module.'}
        = 'Objekt-Backend Modul Registration des Import/Export Moduls.';
    $Lang->{
        'Defines which customer ID to use if no company defined - only relevant for new customer users.'
        }
        = 'Definiert welche Kunden-ID genutzt wird, falls nicht in Mapping definiert - nur fuer neue Kundennutzereintraege relevant.';

    return 0;

    # $$STOP$$
}

# --
1;
