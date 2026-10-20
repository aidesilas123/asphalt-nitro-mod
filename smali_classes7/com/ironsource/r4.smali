###### Class com.json.r4 (com.ironsource.r4)
.class public final Lcom/ironsource/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/l8;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0016R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/ironsource/r4;",
        "Lcom/ironsource/l8;",
        "",
        "f",
        "",
        "e",
        "c",
        "b",
        "a",
        "d",
        "Lcom/ironsource/ob;",
        "Lcom/ironsource/ob;",
        "task",
        "J",
        "sessionStartTime",
        "<init>",
        "(Lcom/ironsource/ob;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/ob;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/ironsource/ob;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/r4;->a:Lcom/ironsource/ob;

    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/l8;)V

    invoke-direct {p0}, Lcom/ironsource/r4;->f()V

    return-void
.end method

.method private final e()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/r4;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final f()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/r4;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/r4;->a:Lcom/ironsource/ob;

    invoke-direct {p0}, Lcom/ironsource/r4;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ob;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ironsource/r4;->a:Lcom/ironsource/ob;

    invoke-virtual {v0}, Lcom/ironsource/ob;->run()V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/r4;->f()V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method
