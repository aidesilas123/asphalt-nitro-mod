###### Class com.ironsource.g6.a (com.ironsource.g6$a)
.class Lcom/ironsource/g6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/g6;->a(Lcom/ironsource/b6;Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/f6;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/g6;


# direct methods
.method constructor <init>(Lcom/ironsource/g6;Lcom/ironsource/f6;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/g6$a;->d:Lcom/ironsource/g6;

    iput-object p2, p0, Lcom/ironsource/g6$a;->a:Lcom/ironsource/f6;

    iput-object p3, p0, Lcom/ironsource/g6$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ironsource/g6$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/ironsource/a6;

    iget-object v1, p0, Lcom/ironsource/g6$a;->a:Lcom/ironsource/f6;

    iget-object v2, p0, Lcom/ironsource/g6$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/a6;-><init>(Lcom/ironsource/f6;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ironsource/g6$a;->d:Lcom/ironsource/g6;

    invoke-static {v1}, Lcom/ironsource/g6;->c(Lcom/ironsource/g6;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/g6$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
