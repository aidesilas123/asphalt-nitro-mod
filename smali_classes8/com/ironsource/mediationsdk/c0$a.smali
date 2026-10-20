###### Class com.ironsource.mediationsdk.c0.a (com.ironsource.mediationsdk.c0$a)
.class Lcom/ironsource/mediationsdk/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/c0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/c0;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/c0;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/c0$a;->a:Lcom/ironsource/mediationsdk/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/c0$a;->a:Lcom/ironsource/mediationsdk/c0;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/c0;->a(Lcom/ironsource/mediationsdk/c0;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/c0;->c(Lcom/ironsource/mediationsdk/c0;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    return-void
.end method
