###### Class com.facebook.internal.AppCall.Companion (com.facebook.internal.AppCall$Companion)
.class public final Lcom/facebook/internal/AppCall$Companion;
.super Ljava/lang/Object;
.source "AppCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/internal/AppCall$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrentPendingCall(Lcom/facebook/internal/AppCall$Companion;Lcom/facebook/internal/AppCall;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/internal/AppCall;->access$setCurrentPendingCall$cp(Lcom/facebook/internal/AppCall;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result p1

    if-eq p1, p2, :cond_1e

    goto :goto_23

    :cond_1e
    invoke-direct {p0, v1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    monitor-exit p0

    return-object v0

    :cond_23
    :goto_23
    monitor-exit p0

    return-object v1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentPendingCall()Lcom/facebook/internal/AppCall;
    .registers 2

    invoke-static {}, Lcom/facebook/internal/AppCall;->access$getCurrentPendingCall$cp()Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
