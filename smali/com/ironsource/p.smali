###### Class com.json.p (com.ironsource.p)
.class public Lcom/ironsource/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private b:Ljava/lang/String;

.field private c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private d:I

.field private e:I

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p;->a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iput-object p2, p0, Lcom/ironsource/p;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/p;->e:I

    iput-object p4, p0, Lcom/ironsource/p;->f:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/ironsource/p;->g:Ljava/lang/String;

    iput p6, p0, Lcom/ironsource/p;->h:I

    iput-object p7, p0, Lcom/ironsource/p;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/ironsource/p;->c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iput p9, p0, Lcom/ironsource/p;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/ironsource/p;->h:I

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/ironsource/p;->d:I

    return v0
.end method

.method public g()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->c:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/ironsource/p;->e:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/p;->b:Ljava/lang/String;

    return-object v0
.end method
