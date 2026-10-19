###### Class com.hyprmx.android.sdk.core.HyprMXErrors (com.hyprmx.android.sdk.core.HyprMXErrors)
.class public enum Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$e;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$c;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$f;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$h;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$b;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$g;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$d;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$a;,
        Lcom/hyprmx/android/sdk/core/HyprMXErrors$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyprmx/android/sdk/core/HyprMXErrors;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/core/HyprMXErrors;",
        "",
        "(Ljava/lang/String;I)V",
        "NO_FILL",
        "DISPLAY_ERROR",
        "PLACEMENT_DOES_NOT_EXIST",
        "SDK_NOT_INITIALIZED",
        "AD_SIZE_NOT_SET",
        "PLACEMENT_NAME_NOT_SET",
        "INVALID_BANNER_PLACEMENT_NAME",
        "AD_FAILED_TO_RENDER",
        "UNKNOWN",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum AD_FAILED_TO_RENDER:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum AD_SIZE_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum DISPLAY_ERROR:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum INVALID_BANNER_PLACEMENT_NAME:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum NO_FILL:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum PLACEMENT_DOES_NOT_EXIST:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum PLACEMENT_NAME_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum SDK_NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

.field public static final enum UNKNOWN:Lcom/hyprmx/android/sdk/core/HyprMXErrors;


# direct methods
.method private static final synthetic $values()[Lcom/hyprmx/android/sdk/core/HyprMXErrors;
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->NO_FILL:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->DISPLAY_ERROR:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_DOES_NOT_EXIST:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->SDK_NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->AD_SIZE_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_NAME_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->INVALID_BANNER_PLACEMENT_NAME:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->AD_FAILED_TO_RENDER:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->UNKNOWN:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$e;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$e;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->NO_FILL:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$c;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$c;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->DISPLAY_ERROR:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$f;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$f;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_DOES_NOT_EXIST:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$h;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$h;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->SDK_NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$b;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$b;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->AD_SIZE_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$g;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$g;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_NAME_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$d;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$d;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->INVALID_BANNER_PLACEMENT_NAME:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->AD_FAILED_TO_RENDER:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors$i;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXErrors$i;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->UNKNOWN:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-static {}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->$values()[Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->$VALUES:[Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/core/HyprMXErrors;
    .registers 2

    const-class v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    return-object p0
.end method

.method public static values()[Lcom/hyprmx/android/sdk/core/HyprMXErrors;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->$VALUES:[Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.a (com.hyprmx.android.sdk.core.HyprMXErrors$a)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$a;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "AD_FAILED_TO_RENDER"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Ad failed to Render."

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.b (com.hyprmx.android.sdk.core.HyprMXErrors$b)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$b;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "AD_SIZE_NOT_SET"

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Please set the banner size before calling loadAd on HyprMXBannerView"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.c (com.hyprmx.android.sdk.core.HyprMXErrors$c)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$c;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "DISPLAY_ERROR"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Display Error"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.d (com.hyprmx.android.sdk.core.HyprMXErrors$d)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$d;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "INVALID_BANNER_PLACEMENT_NAME"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Placement Name is invalid.  Please check value of placementName used to initialize the banner."

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.e (com.hyprmx.android.sdk.core.HyprMXErrors$e)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$e;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "NO_FILL"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "No Fill"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.f (com.hyprmx.android.sdk.core.HyprMXErrors$f)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$f;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "PLACEMENT_DOES_NOT_EXIST"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Placement Does Not Exist"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.g (com.hyprmx.android.sdk.core.HyprMXErrors$g)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$g;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "PLACEMENT_NAME_NOT_SET"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Please set the placement name before calling loadAd on HyprMXBannerView"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.h (com.hyprmx.android.sdk.core.HyprMXErrors$h)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$h;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "SDK_NOT_INITIALIZED"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "HyprMX has not been initialized.  Please initialize HyprMX before calling loadAd on HyprMXBannerView"

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.core.HyprMXErrors.i (com.hyprmx.android.sdk.core.HyprMXErrors$i)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$i;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "UNKNOWN"

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "An unknown error has occurred."

    return-object v0
.end method
