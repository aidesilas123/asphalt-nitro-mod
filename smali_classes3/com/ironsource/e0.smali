###### Class com.json.e0 (com.ironsource.e0)
.class public Lcom/ironsource/e0;
.super Lcom/ironsource/hb;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String; = "type"

.field private static c:Ljava/lang/String; = "numOfAdUnits"

.field private static d:Ljava/lang/String; = "firstCampaignCredits"

.field private static e:Ljava/lang/String; = "totalNumberCredits"

.field private static f:Ljava/lang/String; = "productType"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/e0;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/ironsource/e0;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/e0;->k(Ljava/lang/String;)V

    :cond_14
    sget-object p1, Lcom/ironsource/e0;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    sget-object p1, Lcom/ironsource/e0;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/e0;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-direct {p0, p1}, Lcom/ironsource/e0;->g(Z)V

    sget-object p1, Lcom/ironsource/e0;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/ironsource/e0;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/e0;->g(Ljava/lang/String;)V

    :cond_3c
    sget-object p1, Lcom/ironsource/e0;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    sget-object p1, Lcom/ironsource/e0;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/e0;->j(Ljava/lang/String;)V

    :cond_4d
    sget-object p1, Lcom/ironsource/e0;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e

    sget-object p1, Lcom/ironsource/e0;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/e0;->i(Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method private g(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/e0;->l:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e0;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/e0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/e0;->j:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/e0;->l:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/e0;->i:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/e0;->h:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/e0;->k:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/e0;->g:Ljava/lang/String;

    return-void
.end method
