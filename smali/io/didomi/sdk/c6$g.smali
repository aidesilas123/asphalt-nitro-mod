###### Class io.didomi.drawable.C1733c6.g (io.didomi.sdk.c6$g)
.class public final Lio/didomi/sdk/c6$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/c3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "io/didomi/sdk/c6$g",
        "Lio/didomi/sdk/c3;",
        "",
        "response",
        "",
        "a",
        "(Ljava/lang/String;)V",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/c6;

.field final synthetic b:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d<",
            "Lio/didomi/sdk/y<",
            "Lio/didomi/sdk/user/sync/model/SyncResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/didomi/sdk/c6;Lkotlin/coroutines/d;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/c6;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y<",
            "Lio/didomi/sdk/user/sync/model/SyncResponse;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/c6$g;->a:Lio/didomi/sdk/c6;

    iput-object p2, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    iput-object p3, p0, Lio/didomi/sdk/c6$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lio/didomi/sdk/c6$g;->a:Lio/didomi/sdk/c6;

    invoke-static {v0}, Lio/didomi/sdk/c6;->c(Lio/didomi/sdk/c6;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lio/didomi/sdk/user/sync/model/SyncResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/user/sync/model/SyncResponse;

    if-nez p1, :cond_29

    iget-object p1, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v0, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    const-string v1, "Empty response"

    invoke-virtual {v0, v1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_52

    :cond_29
    iget-object v0, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    invoke-virtual {v1, p1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Object;)Lio/didomi/sdk/y;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_52

    :catch_3b
    move-exception p1

    iget-object v0, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    new-instance v2, Lio/didomi/sdk/V3;

    invoke-direct {v2, p1}, Lio/didomi/sdk/V3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_52
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error syncing data from server. Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/c6$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_25
    iget-object v0, p0, Lio/didomi/sdk/c6$g;->a:Lio/didomi/sdk/c6;

    invoke-static {v0}, Lio/didomi/sdk/c6;->c(Lio/didomi/sdk/c6;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lio/didomi/sdk/user/sync/model/SyncError;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/user/sync/model/SyncError;

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/SyncError;->getCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_5e

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/SyncError;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotFound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object p1, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v0, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v0, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    new-instance v1, Lio/didomi/sdk/d6;

    invoke-direct {v1}, Lio/didomi/sdk/d6;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_87

    :cond_5e
    iget-object v0, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    invoke-virtual {v1, p1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6f} :catch_70

    goto :goto_87

    :catch_70
    move-exception p1

    iget-object v0, p0, Lio/didomi/sdk/c6$g;->b:Lkotlin/coroutines/d;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    sget-object v1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    new-instance v2, Lio/didomi/sdk/V3;

    invoke-direct {v2, p1}, Lio/didomi/sdk/V3;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_87
    return-void
.end method
