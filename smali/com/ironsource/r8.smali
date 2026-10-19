###### Class com.json.r8 (com.ironsource.r8)
.class public Lcom/ironsource/r8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/p8;


# direct methods
.method public constructor <init>(Lcom/ironsource/p8;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/r8;->a:Lcom/ironsource/p8;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/r8;->a:Lcom/ironsource/p8;

    invoke-virtual {p1}, Lcom/ironsource/q8;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lcom/ironsource/q8;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/r8;->a:Lcom/ironsource/p8;

    invoke-virtual {p1}, Lcom/ironsource/q8;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/ironsource/p8;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
