###### Class com.mbridge.msdk.foundation.c.a.a.C0399a (com.mbridge.msdk.foundation.c.a.a$a)
.class public final Lcom/mbridge/msdk/foundation/c/a/a$a;
.super Ljava/lang/Object;
.source "FeedBackBtnBean.java"

# interfaces
.implements Lcom/mbridge/msdk/widget/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/c/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/c/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->b()V

    :cond_7
    return-void
.end method

.method public final a(I)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->a()V

    :cond_d
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mbridge/msdk/foundation/c/a/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/c/a;->a(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/c/b;->c:Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/c/a/a$a;->a:Lcom/mbridge/msdk/foundation/c/a;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/c/a;->b()V

    :cond_a
    return-void
.end method
