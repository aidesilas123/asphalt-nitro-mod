###### Class com.facebook.e (com.facebook.e)
.class public final synthetic Lcom/facebook/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/facebook/FacebookButtonBase;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/FacebookButtonBase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/e;->a:Lcom/facebook/FacebookButtonBase;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/FacebookButtonBase;

    invoke-static {v0, p1}, Lcom/facebook/FacebookButtonBase;->a(Lcom/facebook/FacebookButtonBase;Landroid/view/View;)V

    return-void
.end method
