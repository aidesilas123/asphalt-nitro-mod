###### Class com.hyprmx.android.sdk.utility.HyprMXProperties (com.hyprmx.android.sdk.utility.HyprMXProperties)
.class public final Lcom/hyprmx/android/sdk/utility/HyprMXProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/utility/HyprMXProperties;",
        "",
        "()V",
        "baseUrl",
        "",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "setBaseUrl",
        "(Ljava/lang/String;)V",
        "buildNumber",
        "",
        "number",
        "getNumber$annotations",
        "version",
        "resetBaseUrlToDefault",
        "",
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
.field public static final INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXProperties;

.field private static baseUrl:Ljava/lang/String; = null

.field public static final buildNumber:I = 0x193

.field public static final number:I = 0x193

.field public static final version:Ljava/lang/String; = "6.2.0"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXProperties;

    const-string v0, "https://marketplace-android-b403.hyprmx.com"

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getNumber$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final resetBaseUrlToDefault()V
    .registers 2

    const-string v0, "https://marketplace-android-b403.hyprmx.com"

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->baseUrl:Ljava/lang/String;

    return-void
.end method
