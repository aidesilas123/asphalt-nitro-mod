###### Class com.hyprmx.android.sdk.core.HyprMXMediationProvider (com.hyprmx.android.sdk.core.HyprMXMediationProvider)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;",
        "",
        "()V",
        "ADMOB",
        "",
        "APPLOVIN_MAX",
        "FYBER",
        "IRON_SOURCE",
        "UNITY",
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
.field public static final ADMOB:Ljava/lang/String; = "admob"

.field public static final APPLOVIN_MAX:Ljava/lang/String; = "applovin_max"

.field public static final FYBER:Ljava/lang/String; = "fyber"

.field public static final INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;

.field public static final IRON_SOURCE:Ljava/lang/String; = "ironsource"

.field public static final UNITY:Ljava/lang/String; = "unity"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;->INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMXMediationProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
