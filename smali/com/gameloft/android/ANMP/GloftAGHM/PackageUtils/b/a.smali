###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.a)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;
.super Ljava/lang/Object;
.source "InputDispatcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    const/16 p2, 0x52

    if-ne p1, p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_a
    :goto_a
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeKeyAction(IZ)V

    return p2
.end method

.method public c(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2c

    const/16 v1, 0x52

    if-ne p1, v1, :cond_a

    goto :goto_2c

    :cond_a
    const-string v1, "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files/qaTestingConfigs.txt"

    const-string v2, "LANGUAGE_WITH_VOLUME"

    invoke-static {v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x19

    const/16 v2, 0x18

    if-eq p1, v1, :cond_24

    if-ne p1, v2, :cond_2b

    :cond_24
    if-ne p1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    invoke-static {p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeVolumeAction(Z)V

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    invoke-static {p1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeKeyAction(IZ)V

    return p2
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4f

    const/4 v5, 0x2

    if-eq v2, v4, :cond_43

    if-eq v2, v5, :cond_2b

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1f

    const/4 v6, 0x5

    if-eq v2, v6, :cond_4f

    const/4 v6, 0x6

    if-eq v2, v6, :cond_43

    goto :goto_5b

    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v6, v2, p1, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnTouch(IFFI)V

    goto :goto_5a

    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_2f
    if-ge v3, v0, :cond_5a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v4, v1, v2, v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnTouch(IFFI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_43
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v5, v2, p1, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnTouch(IFFI)V

    goto :goto_5a

    :cond_4f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v3, v2, p1, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnTouch(IFFI)V

    :cond_5a
    :goto_5a
    const/4 v3, 0x1

    :goto_5b
    return v3
.end method
