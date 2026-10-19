###### Class com.ironsource.uc.a (com.ironsource.uc$a)
.class Lcom/ironsource/uc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/uc;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/uc;


# direct methods
.method constructor <init>(Lcom/ironsource/uc;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/uc$a;->b:Lcom/ironsource/uc;

    iput-object p2, p0, Lcom/ironsource/uc$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/uc$a;->b:Lcom/ironsource/uc;

    iget-object v1, p0, Lcom/ironsource/uc$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ironsource/m3;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/uc;->a(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method
