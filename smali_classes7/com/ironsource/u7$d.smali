###### Class com.ironsource.u7.d (com.ironsource.u7$d)
.class Lcom/ironsource/u7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u7;->a(Landroid/app/Activity;Lcom/ironsource/s7;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/j3;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/u7;


# direct methods
.method constructor <init>(Lcom/ironsource/u7;Lcom/ironsource/j3;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u7$d;->c:Lcom/ironsource/u7;

    iput-object p2, p0, Lcom/ironsource/u7$d;->a:Lcom/ironsource/j3;

    iput-object p3, p0, Lcom/ironsource/u7$d;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/u7$d;->c:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u7$d;->a:Lcom/ironsource/j3;

    iget-object v2, p0, Lcom/ironsource/u7$d;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/u7$d;->c:Lcom/ironsource/u7;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V

    return-void
.end method
