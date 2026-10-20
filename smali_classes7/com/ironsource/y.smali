###### Class com.json.y (com.ironsource.y)
.class public Lcom/ironsource/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y$a;
    }
.end annotation


# static fields
.field public static final e:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/y$a;

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/ironsource/y$a;JJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    iput-wide p2, p0, Lcom/ironsource/y;->b:J

    iput-wide p4, p0, Lcom/ironsource/y;->c:J

    iput-wide p6, p0, Lcom/ironsource/y;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/y$a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->d:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->c:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/y;->b:J

    return-wide v0
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    sget-object v1, Lcom/ironsource/y$a;->c:Lcom/ironsource/y$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/y$a;->d:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/y$a;

    sget-object v1, Lcom/ironsource/y$a;->a:Lcom/ironsource/y$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/y$a;->b:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
