###### Class com.fyber.inneractive.sdk.config.global.c (com.fyber.inneractive.sdk.config.global.c)
.class public Lcom/fyber/inneractive/sdk/config/global/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/config/global/d;


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/c;->a:Ljava/util/Set;

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_26

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/config/global/c;->a:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/config/global/c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/global/e;)Z
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz p1, :cond_31

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/config/global/e;->a:Ljava/lang/Long;

    if-nez v0, :cond_f

    goto :goto_31

    :cond_f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/config/global/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/global/e;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/c;->b:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2e
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/c;->b:Z

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "demand"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/c;->a:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/config/global/c;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s - %s include: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
