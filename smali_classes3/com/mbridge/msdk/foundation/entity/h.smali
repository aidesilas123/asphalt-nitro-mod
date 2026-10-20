###### Class com.mbridge.msdk.foundation.entity.h (com.mbridge.msdk.foundation.entity.h)
.class public final Lcom/mbridge/msdk/foundation/entity/h;
.super Ljava/lang/Object;
.source "LoadTime.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;III)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->a:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/entity/h;->b:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/foundation/entity/h;->c:I

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/entity/h;->d:Ljava/lang/String;

    iput p5, p0, Lcom/mbridge/msdk/foundation/entity/h;->e:I

    iput p6, p0, Lcom/mbridge/msdk/foundation/entity/h;->f:I

    iput p7, p0, Lcom/mbridge/msdk/foundation/entity/h;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->i:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->i:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->a:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->a:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->c:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->c:I

    return v0
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/entity/h;->g:I

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->e:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->f:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->g:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/entity/h;->h:Ljava/lang/String;

    return-object v0
.end method
