###### Class com.hyprmx.android.sdk.core.HyprMX (com.hyprmx.android.sdk.core.HyprMX)
.class public final Lcom/hyprmx/android/sdk/core/HyprMX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/HyprMXIf;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096\u0001J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0096\u0001J7\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J?\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J/\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0008H\u0096\u0001J\u0013\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0019H\u0096\u0001J\u0011\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0096\u0001J\'\u0010\u001b\u001a\u00020\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u0096\u0001J\u0013\u0010\u001f\u001a\u00020\u000c2\u0008\u0010 \u001a\u0004\u0018\u00010\u0008H\u0096\u0001\u00a8\u0006!"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/core/HyprMX;",
        "Lcom/hyprmx/android/sdk/core/HyprMXIf;",
        "()V",
        "getInitializationState",
        "Lcom/hyprmx/android/sdk/core/HyprMXState;",
        "getPlacement",
        "Lcom/hyprmx/android/sdk/placement/Placement;",
        "placementName",
        "",
        "getPlacements",
        "",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "distributorId",
        "userId",
        "consentStatus",
        "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
        "listener",
        "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;",
        "ageRestrictedUser",
        "",
        "sessionToken",
        "setAudioAdListener",
        "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;",
        "setConsentStatus",
        "setMediationProvider",
        "mediator",
        "mediatorSDKVersion",
        "adapterVersion",
        "setUnityVersion",
        "version",
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
.field public static final INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMX;


# instance fields
.field private final synthetic $$delegate_0:Lcom/hyprmx/android/sdk/core/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/core/HyprMX;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/core/HyprMX;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/core/HyprMX;->INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMX;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hyprmx/android/sdk/core/t;->a()Lcom/hyprmx/android/sdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    return-void
.end method


# virtual methods
.method public getInitializationState()Lcom/hyprmx/android/sdk/core/HyprMXState;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/core/q;->getInitializationState()Lcom/hyprmx/android/sdk/core/HyprMXState;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/Placement;
    .registers 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/core/q;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/Placement;

    move-result-object p1

    return-object p1
.end method

.method public getPlacements()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hyprmx/android/sdk/placement/Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/core/q;->getPlacements()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "consentStatus"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;ZLcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyprmx/android/sdk/core/q;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;)V

    return-void
.end method

.method public sessionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/core/q;->sessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAdListener(Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/q;->j:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;

    return-void
.end method

.method public setConsentStatus(Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V
    .registers 3

    const-string v0, "consentStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/core/q;->setConsentStatus(Lcom/hyprmx/android/sdk/consent/ConsentStatus;)V

    return-void
.end method

.method public setMediationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyprmx/android/sdk/core/q;->setMediationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnityVersion(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/HyprMX;->$$delegate_0:Lcom/hyprmx/android/sdk/core/q;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/core/u;->a:Ljava/lang/String;

    return-void
.end method
