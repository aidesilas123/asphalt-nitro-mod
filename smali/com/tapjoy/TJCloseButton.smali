###### Class com.tapjoy.TJCloseButton (com.tapjoy.TJCloseButton)
.class public Lcom/tapjoy/TJCloseButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCloseButton$ClosePosition;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->c:Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJCloseButton;->a:Z

    new-instance p1, Lcom/tapjoy/e0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tapjoy/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/tapjoy/e0;->b()F

    move-result p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyIcons;->getCloseCircularImage(F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p1, 0xffffff

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2}, Lcom/tapjoy/TJCloseButton$ClosePosition;->e()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TJCloseButton;->b:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tapjoy/internal/g3;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/g3;-><init>(Lcom/tapjoy/TJCloseButton;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setClickableRequested(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/tapjoy/TJCloseButton;->a:Z

    iget-boolean v0, p0, Lcom/tapjoy/TJCloseButton;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    return-void
.end method

###### Class com.tapjoy.TJCloseButton.ClosePosition (com.tapjoy.TJCloseButton$ClosePosition)
.class public final enum Lcom/tapjoy/TJCloseButton$ClosePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJCloseButton$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum b:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum c:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum d:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum e:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum f:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum g:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final synthetic h:[Lcom/tapjoy/TJCloseButton$ClosePosition;


# instance fields
.field public final i:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_7e

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v2, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v3, v1, [I

    fill-array-data v3, :array_86

    const-string v5, "TOP_CENTER"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v2, Lcom/tapjoy/TJCloseButton$ClosePosition;->b:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v3, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v5, v1, [I

    fill-array-data v5, :array_8e

    const-string v7, "TOP_RIGHT"

    invoke-direct {v3, v7, v1, v5}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v3, Lcom/tapjoy/TJCloseButton$ClosePosition;->c:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v5, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v7, v6, [I

    const/16 v8, 0xd

    aput v8, v7, v4

    const-string v8, "CENTER"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v5, Lcom/tapjoy/TJCloseButton$ClosePosition;->d:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v7, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v8, v1, [I

    fill-array-data v8, :array_96

    const-string v10, "BOTTOM_LEFT"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v7, Lcom/tapjoy/TJCloseButton$ClosePosition;->e:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v8, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v10, v1, [I

    fill-array-data v10, :array_9e

    const-string v12, "BOTTOM_CENTER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v8, Lcom/tapjoy/TJCloseButton$ClosePosition;->f:Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-instance v10, Lcom/tapjoy/TJCloseButton$ClosePosition;

    new-array v12, v1, [I

    fill-array-data v12, :array_a6

    const-string v14, "BOTTOM_RIGHT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v10, Lcom/tapjoy/TJCloseButton$ClosePosition;->g:Lcom/tapjoy/TJCloseButton$ClosePosition;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v0, v12, v4

    aput-object v2, v12, v6

    aput-object v3, v12, v1

    aput-object v5, v12, v9

    aput-object v7, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/tapjoy/TJCloseButton$ClosePosition;->h:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-void

    :array_7e
    .array-data 4
        0xa
        0x9
    .end array-data

    :array_86
    .array-data 4
        0xa
        0xe
    .end array-data

    :array_8e
    .array-data 4
        0xa
        0xb
    .end array-data

    :array_96
    .array-data 4
        0xc
        0x9
    .end array-data

    :array_9e
    .array-data 4
        0xc
        0xe
    .end array-data

    :array_a6
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[I)V
    .registers 8

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x4052c00000000000L    # 75.0

    mul-double v0, v0, v2

    double-to-int p2, v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result v0

    float-to-double v0, v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->i:Landroid/widget/RelativeLayout$LayoutParams;

    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_22
    if-ge v0, p1, :cond_2e

    aget v1, p3, v0

    iget-object v2, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2e
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result p1

    const/high16 p3, -0x3ee00000    # -10.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    iget-object p3, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, p2, p1, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJCloseButton$ClosePosition;
    .registers 2

    const-class v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJCloseButton$ClosePosition;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->h:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-virtual {v0}, [Lcom/tapjoy/TJCloseButton$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object v0
.end method


# virtual methods
.method public final e()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->i:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method
