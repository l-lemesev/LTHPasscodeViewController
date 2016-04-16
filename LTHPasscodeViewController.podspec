#
#  Be sure to run `pod spec lint SevenSwitch.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "https://github.com/l-lemesev/LTHPasscodeViewController"
  s.version      = "3.7.6"
  s.summary      = "iOS 7 style Passcode Lock"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
              # LTHPasscodeViewController\nSimple to use iOS 7 style (replica, if you will) Passcode view. Not the Lock Screen one, but the one you get in Settings when changing your passcode.\nI made it a singleton because if the lock is active, when leaving the app a view must be placed on top, so no data from within the app can be seen in the multitasking mode. This is done under the hood, without having to do anything extra.\n# How to use\nDrag the contents of `LTHPasscodeViewController` to your project, or add `pod 'LTHPasscodeViewController'` to your podspec file.\n* When opened from Settings (as a modal):\n```objc\n- (void)showForEnablingPasscodeInViewController:(UIViewController *)viewController;\n- (void)showForChangingPasscodeInViewController:(UIViewController *)viewController;\n- (void)showForTurningOffPasscodeInViewController:(UIViewController *)viewController;\n// Example:\n[[LTHPasscodeViewController sharedUser] showForEnablingPasscodeInViewController: self]\n```\n* At app launch, or whenever you'd like the user to be shown a passcode entry:\n```objc\n- (void)showLockscreenWithAnimation:(BOOL)animated;\n// Example:\n[[LTHPasscodeViewController sharedUser] showLockscreenWithAnimation: YES]\n// Displayed with a slide up animation, which, combined with\n// the keyboard sliding down animation, creates an \"unlocking\" impression.\n```\n* entering foreground and resigning is handled from within the class.\nEverything is easily customizable with macros and static constants.\nMakes use of [SFHFKeyChainUtils](https://github.com/ldandersen/scifihifi-iphone) to save the passcode in the Keychain. I know he dropped support for it, but I updated it for ARC 2 years ago ([with help](http://stackoverflow.com/questions/7663443/sfhfkeychainutils-ios-keychain-arc-compatible)) and I kept using it since. The 'new' version isn't updated to ARC anyway, so I saw no reason to switch to it, or to any other library.\nRather than writing a big documentation, I heavily commented it as best as I could. Feel free to [contact me](mailto:roland@rolandleth.com), or open an issue if anything is unclear, bugged, or can be improved.\n## Removing Unused Localizations\nBecause the App Store automatically attempts to determine supported locales, and LTHPasscodeViewController includes localizations for the aforementioned locales, you may want to remove the `.strings` file and `.lproj` directory. You can do this most easily by having the following command run in a new Build Phase:\n        $ find \"$TARGET_BUILD_DIR\" -maxdepth 8 -type f -name \"LTHPasscodeViewController.strings\" -execdir rm -r -v {} ;\n# Apps using this control\n[Expenses Planner](https://itunes.apple.com/us/app/expenses-planner-reminders/id669431471?mt=8)\n[DigitalOcean Manager](https://itunes.apple.com/us/app/digitalocean-manager/id633128302?mt=8)\n[LovelyHeroku](https://itunes.apple.com/us/app/lovelyheroku/id706287663?mt=8&uo=4)\n[Flow Web Browser](https://itunes.apple.com/us/app/flow-web-browser-downloader/id705536564?mt=8)\n[Balance - Checkbook App](https://itunes.apple.com/US/app/id854362248)\nIf you're using this control, I'd love hearing from you!
                   DESC

  s.homepage     = "https://github.com/rolandleth/LTHPasscodeViewController"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE.txt  " }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Roland Leth" => "roland@leth.ro" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "6.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/l-lemesev/LTHPasscodeViewController.git", :tag => "3.7.6" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "README.md, CHANGELOG.md, LTHPasscodeViewController",
  "LTHPasscodeViewController/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.framework  = "QuartzCore"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
