###### Class com.json.c (com.ironsource.c)
.class public final synthetic Lcom/ironsource/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ironsource/sdk/controller/k$a;


# instance fields
.field public final synthetic a:Lcom/ironsource/i9;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/i9;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/c;->a:Lcom/ironsource/i9;

    iput-object p2, p0, Lcom/ironsource/c;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/c;->a:Lcom/ironsource/i9;

    iget-object v1, p0, Lcom/ironsource/c;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/ironsource/i9;->p(Lcom/ironsource/i9;Landroid/app/Activity;Lcom/ironsource/sdk/controller/f$a;)V

    return-void
.end method
