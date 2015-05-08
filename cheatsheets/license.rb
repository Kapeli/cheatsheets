cheatsheet do
    title 'Licenses'             # Will be displayed by Dash in the docset list
    docset_file_name 'licenses'  # Used for the filename of the docset
    keyword 'license'            # Used as the initial search keyword (listed in Preferences > Docsets)
    # resources 'resources_dir'  # An optional resources folder which can contain images or anything else
    # introduction 'Choose a license'  # Optional, can contain Markdown or HTML
    #
    category do
        id 'Apache'

        entry do
            notes 'A permissive license that also provides an express grant of patent rights from contributors to users.'
        end


        entry do
            command 'Apache'
            notes "#### Forbidden\n\n- Hold Liable\n- Use Trademark\n\n#### Required\n\n- License and copyright notice\n- State Changes\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'GPL'

        entry do
            notes 'GPL is the most widely used free software license and has a strong copyleft requirement. When distributing derived works, the source code of the work must be made available under the same license. There are multiple variants of the GPL, each with different requirements.'
        end


        entry do
            command 'GNU Affero GPL v3.0'
            notes "#### Forbidden\n\n- Hold Liable\n- Sublicensing\n\n#### Required\n\n- Disclose Source\n- License and copyright notice\n- Network Use is Distribution\n- State Changes\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use"
        end


        entry do
            command 'GNU GPL v2.0'
            notes "#### Forbidden\n\n- Hold Liable\n- Sublicensing\n\n#### Required\n\n- Disclose Source\n- License and copyright notice\n- State Changes\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use"
        end


        entry do
            command 'GNU GPL v3.0'
            notes "#### Forbidden\n\n- Hold Liable\n- Sublicensing\n\n#### Required\n\n- Disclose Source\n- License and copyright notice\n- State Changes\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use"
        end

    end

    category do
        id 'MIT'

        entry do
            notes 'A permissive license that is short and to the point. It lets people do anything with your code with proper attribution and without warranty.'
        end


        entry do
            command 'MIT'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'Artistic'

        entry do
            notes 'Heavily favored by the Perl community, the Artistic license requires that modified versions of the software do not prevent users from running the standard version.'
        end


        entry do
            command 'Artistic'
            notes "#### Forbidden\n\n- Hold Liable\n- Use Trademark\n\n#### Required\n\n- License and copyright notice\n- State Changes\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'Eclipse'

        entry do
            notes 'This commercially-friendly copyleft license provides the ability to commercially license binaries; a modern royalty-free patent license grant; and the ability for linked works to use other licenses, including commercial ones.'
        end


        entry do
            command 'Eclipse'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- Disclose Source\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'BSD'

        entry do
            notes 'A permissive license lets people do anything with your code with proper attribution and without warranty. The ISC license is functionally equivalent to the BSD 2-Clause and MIT licenses, removing some language that is no longer necessary.'
        end


        entry do
            command 'Simplified BSD'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end


        entry do
            command 'New BSD'
            notes "#### Forbidden\n\n- Hold Liable\n- Use Trademark\n\n#### Required\n\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end


        entry do
            command 'ISC License'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'LGPL'

        entry do
            notes 'Primarily used for software libraries, LGPL requires that derived works be licensed under the same license, but works that only link to it do not fall under this restriction. There are two commonly used versions of the LGPL.'
        end


        entry do
            command 'GNU LGPL v2.1'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- Disclose Source\n- Library usage\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use\n- Sublicensing"
        end


        entry do
            command 'GNU LGPL v3.0'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n- Disclose Source\n- Library usage\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'Mozilla'

        entry do
            notes 'The Mozilla Public License (MPL 2.0) is maintained by the Mozilla foundation. This license attempts to be a compromise between the permissive BSD license and the reciprocal GPL license.'
        end


        entry do
            command 'Mozilla'
            notes "#### Forbidden\n\n- Hold Liable\n- Use Trademark\n\n#### Required\n\n- Disclose Source\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Patent Grant\n- Private Use\n- Sublicensing"
        end

    end

    category do
        id 'No License'

        entry do
            notes 'You retain all rights and do not permit distribution, reproduction, or derivative works. You may grant some rights in cases where you publish your source code to a site that requires accepting terms of service. For example, publishing code in a public repository on GitHub requires that you allow others to view and fork your code.'
        end


        entry do
            command 'No License'
            notes "#### Forbidden\n\n- Distribution\n- Modification\n- Sublicensing\n\n#### Required\n\n- License and copyright notice\n\n#### Permitted\n\n- Commercial Use\n- Private Use"
        end

    end

    category do
        id 'Public Domain Dedication'

        entry do
            notes "Because copyright is automatic in most countries, the Unlicense is a template to waive copyright interest in software you've written and dedicate it to the public domain. Use the Unlicense to opt out of copyright entirely. It also includes the no-warranty statement from the MIT/X11 license."
        end


        entry do
            command 'CC0 1.0 Universal'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use"
        end


        entry do
            command 'The Unlicense'
            notes "#### Forbidden\n\n- Hold Liable\n\n#### Required\n\n\n#### Permitted\n\n- Commercial Use\n- Distribution\n- Modification\n- Private Use\n- Sublicensing"
        end

    end

    notes 'Parse from choosealicense.com'
end
