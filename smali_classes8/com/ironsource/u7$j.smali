###### Class com.ironsource.u7.j (com.ironsource.u7$j)
.class Lcom/ironsource/u7$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u7;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/ironsource/u7;


# direct methods
.method constructor <init>(Lcom/ironsource/u7;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/u7$j;->b:Lcom/ironsource/u7;

    iput-object p2, p0, Lcom/ironsource/u7$j;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/u7$j;->b:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u7$j;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/ironsource/u7$j;->b:Lcom/ironsource/u7;

    invoke-static {v2}, Lcom/ironsource/u7;->m(Lcom/ironsource/u7;)Lcom/ironsource/da;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/e;->a(Ljava/util/Map;Lcom/ironsource/da;)V

    return-void
.end method
