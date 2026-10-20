###### Class com.moat.analytics.mobile.glft.R.styleable (com.moat.analytics.mobile.glft.R$styleable)
.class public final Lcom/moat/analytics/mobile/glft/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Lcom/moat/analytics/mobile/glft/R$styleable;->AdsAttrs:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_22

    sput-object v1, Lcom/moat/analytics/mobile/glft/R$styleable;->LoadingImageView:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/moat/analytics/mobile/glft/R$styleable;->SignInButton:[I

    return-void

    nop

    :array_18
    .array-data 4
        0x7f040029
        0x7f04002a
        0x7f04002b
    .end array-data

    :array_22
    .array-data 4
        0x7f0400ec
        0x7f040248
        0x7f040249
    .end array-data

    :array_2c
    .array-data 4
        0x7f0400b0
        0x7f04012d
        0x7f0403b4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
