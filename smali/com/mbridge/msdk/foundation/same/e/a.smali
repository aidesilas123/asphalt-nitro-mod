###### Class com.mbridge.msdk.foundation.same.e.a (com.mbridge.msdk.foundation.same.e.a)
.class public abstract Lcom/mbridge/msdk/foundation/same/e/a;
.super Ljava/lang/Object;
.source "CommonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/e/a$a;,
        Lcom/mbridge/msdk/foundation/same/e/a$b;
    }
.end annotation


# static fields
.field public static b:J


# instance fields
.field public c:Lcom/mbridge/msdk/foundation/same/e/a$b;

.field public d:Lcom/mbridge/msdk/foundation/same/e/a$a;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mbridge/msdk/foundation/same/e/a$b;->a:Lcom/mbridge/msdk/foundation/same/e/a$b;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/e/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/mbridge/msdk/foundation/same/e/a;->b:J

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/e/a;->d:Lcom/mbridge/msdk/foundation/same/e/a$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/foundation/same/e/a$a;->a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/e/a$b;->d:Lcom/mbridge/msdk/foundation/same/e/a$b;

    if-eq v0, v1, :cond_c

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/same/e/a;->a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/e/a;->b()V

    :cond_c
    return-void
.end method

.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/e/a$b;->a:Lcom/mbridge/msdk/foundation/same/e/a$b;

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/mbridge/msdk/foundation/same/e/a$b;->b:Lcom/mbridge/msdk/foundation/same/e/a$b;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/e/a;->a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/e/a;->a()V

    sget-object v0, Lcom/mbridge/msdk/foundation/same/e/a$b;->e:Lcom/mbridge/msdk/foundation/same/e/a$b;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/e/a;->a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method
