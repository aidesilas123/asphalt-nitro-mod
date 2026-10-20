###### Class com.json.h8 (com.ironsource.h8)
.class public final synthetic Lcom/ironsource/h8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ironsource/x6;

.field public final synthetic b:Lcom/ironsource/x6$b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/x6;Lcom/ironsource/x6$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/h8;->a:Lcom/ironsource/x6;

    iput-object p2, p0, Lcom/ironsource/h8;->b:Lcom/ironsource/x6$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/h8;->a:Lcom/ironsource/x6;

    iget-object v1, p0, Lcom/ironsource/h8;->b:Lcom/ironsource/x6$b;

    invoke-static {v0, v1, p1}, Lcom/ironsource/x6;->m(Lcom/ironsource/x6;Lcom/ironsource/x6$b;Landroid/view/View;)V

    return-void
.end method
