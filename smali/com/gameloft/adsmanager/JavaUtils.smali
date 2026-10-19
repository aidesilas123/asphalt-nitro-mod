###### Class com.gameloft.adsmanager.JavaUtils (com.gameloft.adsmanager.JavaUtils)
.class public Lcom/gameloft/adsmanager/JavaUtils;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/adsmanager/JavaUtils$PlacementState;,
        Lcom/gameloft/adsmanager/JavaUtils$Constants;,
        Lcom/gameloft/adsmanager/JavaUtils$Errors;
    }
.end annotation


# static fields
.field static _anchor:I = 0x3

.field static _positionX:I = 0x0

.field static _positionY:I = 0x0

.field static bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams; = null

.field static banner_height:I = 0x0

.field static banner_width:I = 0x0

.field static density:F = 1.0f

.field static displayDpi:I = 0xa0

.field static final displayDpiRef:I = 0xa0

.field static displayHeightPx:I = 0x0

.field static displayWidthPx:I = 0x0

.field static isPhone:Z = true

.field static nativeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams; = null

.field static realScreenHeightDpi:F = 1.0f

.field static realScreenWidthDpi:F = 1.0f

.field static zoomFactor:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AdsManagerLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogErrorNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static native AdsManagerLogErrorNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfoNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static native AdsManagerLogInfoNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native AdsManagerLogNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarningNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static native AdsManagerLogWarningNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static ApplyCorrection(Landroid/view/View;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->zoomFactor:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->zoomFactor:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->zoomFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->banner_width:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v0

    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->banner_height:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    div-float/2addr v1, v3

    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->_anchor:I

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_72

    goto :goto_71

    :pswitch_2d
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_34
    neg-float v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_3c
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_43
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_4a
    neg-float v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_52
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_59
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    neg-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_61
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    neg-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_71

    :pswitch_69
    neg-float v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    neg-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_52
        :pswitch_4a
        :pswitch_43
        :pswitch_3c
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method static Init()V
    .registers 7

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/gameloft/adsmanager/JavaUtils;->density:F

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/gameloft/adsmanager/JavaUtils;->displayDpi:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_33

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->displayWidthPx:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->displayHeightPx:I

    goto :goto_3f

    :cond_33
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/gameloft/adsmanager/JavaUtils;->displayWidthPx:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->displayHeightPx:I

    :goto_3f
    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->displayWidthPx:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    sget v2, Lcom/gameloft/adsmanager/JavaUtils;->displayHeightPx:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v3

    mul-float v3, v0, v0

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5a

    const/4 v3, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    sput-boolean v3, Lcom/gameloft/adsmanager/JavaUtils;->isPhone:Z

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v0, v0, v3

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->realScreenWidthDpi:F

    mul-float v2, v2, v3

    sput v2, Lcom/gameloft/adsmanager/JavaUtils;->realScreenHeightDpi:F

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_89

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->realScreenHeightDpi:F

    div-float/2addr v0, v3

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->zoomFactor:F

    goto :goto_9b

    :cond_89
    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->realScreenWidthDpi:F

    div-float/2addr v0, v3

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->zoomFactor:F

    :goto_9b
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v6

    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->displayDpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "DisplayMetrics: density = (%f), densityDpi = (%d), widthPixels = (%d), heightPixels = (%d), xdpi = (%f), ydpi = (%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaUtils.java"

    const-string v2, "Init"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    invoke-static {}, Lcom/gameloft/adsmanager/JavaUtils;->SetupLayoutParams()V

    return-void
.end method

.method public static LogErrorIfClassIsMissing(Ljava/lang/String;)Z
    .registers 8

    const-string v0, ")"

    const-string v1, "class = ("

    const-string v2, "JavaUtils.java"

    const-string v3, "LogErrorIfClassIsMissing"

    const/4 v4, 0x0

    :try_start_9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_28
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    const/4 p0, 0x1

    return p0

    :catchall_e
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v3, v5}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :catch_28
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v3, v5}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method public static LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    if-eqz p2, :cond_38

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception message=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") stackTrace = ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public static PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    if-nez p0, :cond_10

    const-string v0, "JavaUtils.java"

    const-string v1, "PostAndLogExcepions"

    const-string v2, "Invalid parentViewGroup"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_10
    new-instance v0, Lcom/gameloft/adsmanager/JavaUtils$1;

    invoke-direct {v0, p1, p2}, Lcom/gameloft/adsmanager/JavaUtils$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static RemoveViewFromParent(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method static SetBannerPositionAndAnchor(III)V
    .registers 3

    sput p0, Lcom/gameloft/adsmanager/JavaUtils;->_positionX:I

    sput p1, Lcom/gameloft/adsmanager/JavaUtils;->_positionY:I

    sput p2, Lcom/gameloft/adsmanager/JavaUtils;->_anchor:I

    invoke-static {}, Lcom/gameloft/adsmanager/JavaUtils;->SetupLayoutParams()V

    return-void
.end method

.method static SetupBannerDimensions()V
    .registers 3

    sget-boolean v0, Lcom/gameloft/adsmanager/JavaUtils;->isPhone:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->density:F

    const/high16 v1, 0x43a00000    # 320.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    sput v1, Lcom/gameloft/adsmanager/JavaUtils;->banner_width:I

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->banner_height:I

    goto :goto_25

    :cond_15
    sget v0, Lcom/gameloft/adsmanager/JavaUtils;->density:F

    const/high16 v1, 0x44360000    # 728.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    sput v1, Lcom/gameloft/adsmanager/JavaUtils;->banner_width:I

    const/high16 v1, 0x42b40000    # 90.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/gameloft/adsmanager/JavaUtils;->banner_height:I

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/gameloft/adsmanager/JavaUtils;->banner_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), height=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/gameloft/adsmanager/JavaUtils;->banner_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaUtils.java"

    const-string v2, "SetupBannerDimensions"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static SetupLayoutParams()V
    .registers 10

    invoke-static {}, Lcom/gameloft/adsmanager/JavaUtils;->SetupBannerDimensions()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    sget v1, Lcom/gameloft/adsmanager/JavaUtils;->_anchor:I

    const/16 v2, 0xf

    const/16 v3, 0xc

    const/16 v4, 0xe

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_82

    goto :goto_49

    :pswitch_1d
    aput v2, v0, v9

    aput v4, v0, v8

    goto :goto_49

    :pswitch_22
    aput v2, v0, v9

    aput v6, v0, v8

    goto :goto_49

    :pswitch_27
    aput v2, v0, v9

    aput v5, v0, v8

    goto :goto_49

    :pswitch_2c
    aput v5, v0, v9

    aput v3, v0, v8

    goto :goto_49

    :pswitch_31
    aput v6, v0, v9

    aput v3, v0, v8

    goto :goto_49

    :pswitch_36
    aput v4, v0, v9

    aput v3, v0, v8

    goto :goto_49

    :pswitch_3b
    aput v7, v0, v9

    aput v4, v0, v8

    goto :goto_49

    :pswitch_40
    aput v7, v0, v9

    aput v5, v0, v8

    goto :goto_49

    :pswitch_45
    aput v7, v0, v9

    aput v6, v0, v8

    :goto_49
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/gameloft/adsmanager/JavaUtils;->banner_width:I

    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->banner_height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v1, Lcom/gameloft/adsmanager/JavaUtils;->bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    aget v2, v0, v9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/gameloft/adsmanager/JavaUtils;->bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    aget v0, v0, v8

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v0, Lcom/gameloft/adsmanager/JavaUtils;->bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/gameloft/adsmanager/JavaUtils;->_positionX:I

    if-ltz v1, :cond_6e

    move v2, v1

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    sget v3, Lcom/gameloft/adsmanager/JavaUtils;->_positionY:I

    if-ltz v3, :cond_75

    move v4, v3

    goto :goto_76

    :cond_75
    const/4 v4, 0x0

    :goto_76
    if-gez v1, :cond_7a

    neg-int v1, v1

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    if-gez v3, :cond_7e

    neg-int v9, v3

    :cond_7e
    invoke-virtual {v0, v2, v4, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
    .end packed-switch

    :array_98
    .array-data 4
        0xe
        0xc
    .end array-data
.end method

###### Class com.gameloft.adsmanager.JavaUtils.AnonymousClass1 (com.gameloft.adsmanager.JavaUtils$1)
.class Lcom/gameloft/adsmanager/JavaUtils$1;
.super Ljava/lang/Object;
.source "JavaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$inCaseOfException:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$action:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$inCaseOfException:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    const-string v1, "PostAndLogExcepions"

    invoke-static {v1, v1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$inCaseOfException:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_13
    :goto_13
    return-void
.end method

###### Class com.gameloft.adsmanager.JavaUtils.Constants (com.gameloft.adsmanager.JavaUtils$Constants)
.class public Lcom/gameloft/adsmanager/JavaUtils$Constants;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/adsmanager/JavaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/adsmanager/JavaUtils$Constants$Anchor;
    }
.end annotation


# static fields
.field public static final BANNER_HEIGHT_DP:I = 0x32

.field public static final BANNER_WIDTH_DP:I = 0x140

.field public static final NATIVE_HEIGHT_DP_100:I = 0x64

.field public static final NATIVE_HEIGHT_DP_300:I = 0x12c

.field public static final TABLET_HEIGHT_DP:I = 0x5a

.field public static final TABLET_WIDTH_DP:I = 0x2d8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gameloft.adsmanager.JavaUtils.Constants.Anchor (com.gameloft.adsmanager.JavaUtils$Constants$Anchor)
.class public Lcom/gameloft/adsmanager/JavaUtils$Constants$Anchor;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/adsmanager/JavaUtils$Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Anchor"
.end annotation


# static fields
.field public static final AD_BOTTOM_CENTER:I = 0x3

.field public static final AD_BOTTOM_LEFT:I = 0x4

.field public static final AD_BOTTOM_RIGHT:I = 0x5

.field public static final AD_CENTER:I = 0x8

.field public static final AD_MIDDLE_LEFT:I = 0x7

.field public static final AD_MIDDLE_RIGHT:I = 0x6

.field public static final AD_TOP_CENTER:I = 0x2

.field public static final AD_TOP_LEFT:I = 0x0

.field public static final AD_TOP_RIGHT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gameloft.adsmanager.JavaUtils.Errors (com.gameloft.adsmanager.JavaUtils$Errors)
.class public Lcom/gameloft/adsmanager/JavaUtils$Errors;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/adsmanager/JavaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Errors"
.end annotation


# static fields
.field public static final ERROR_EXCEPTION_RAISED:I = 0x22b8

.field public static final ERROR_NO_AD_AVAILABLE:I = 0x270c

.field public static final ERROR_UNKNOWN:I = 0x2707


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.gameloft.adsmanager.JavaUtils.PlacementState (com.gameloft.adsmanager.JavaUtils$PlacementState)
.class public Lcom/gameloft/adsmanager/JavaUtils$PlacementState;
.super Ljava/lang/Object;
.source "JavaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/adsmanager/JavaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlacementState"
.end annotation


# instance fields
.field private placementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p0

    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-object v1, p1, v0

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    aget-object v2, p1, v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw p1
.end method


# virtual methods
.method public declared-synchronized HasPlacement(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized PopSpecificPlacement(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_24

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_21
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized PopValidPlacement()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_32

    const-string v0, ""
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_38

    monitor-exit p0

    return-object v0

    :cond_32
    monitor-exit p0

    return-object v1

    :cond_34
    :try_start_34
    const-string v0, ""
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized PushPlacement(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_e

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->placementMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_e
    :goto_e
    monitor-exit p0

    return-void
.end method
