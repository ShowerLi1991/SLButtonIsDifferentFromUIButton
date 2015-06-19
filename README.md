# SLButtonIsDifferentFromUIButton
  
  
SLButtonIsDifferentFromUIButton.h

    #import <UIKit/UIKit.h>
    typedef enum {
       SLButtonTypeButtonWhoesTitleIsUnderImage = 0,
       SLButtonTypeButtonWhoesTitleIsOverImage,
       SLButtonTypeButtonWhoesTitleIsLeftImage,
      } SLButtonType;

    @interface SLButtonIsDifferentFromUIButton : UIButton
      + (instancetype)SLButtonWithType:(SLButtonType)SLButtonType;
      + (instancetype)buttonWithType:(SLButtonType)SLButtonType;
    @end
  
  #To use SLButton, you can design button like this:
  
![(Pic1)](http://www.52772577.com/content/images/SL/SLButtonIsDifferentFromUIButton11.png)
![(Pic2)](http://www.52772577.com/content/images/SL/SLButtonIsDifferentFromUIButton22.png)
![(Pic3)](http://www.52772577.com/content/images/SL/SLButtonIsDifferentFromUIButton33.png)

# How to use:

![(Pic4)](http://www.52772577.com/content/images/SL/SLButtonIsDifferentFromUIButton44.png)
