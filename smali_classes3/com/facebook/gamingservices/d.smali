###### Class com.facebook.gamingservices.d (com.facebook.gamingservices.d)
.class public final synthetic Lcom/facebook/gamingservices/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/gamingservices/ContextCreateDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/ContextCreateDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/d;->a:Lcom/facebook/gamingservices/ContextCreateDialog;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/gamingservices/d;->a:Lcom/facebook/gamingservices/ContextCreateDialog;

    invoke-static {v0, p1}, Lcom/facebook/gamingservices/ContextCreateDialog;->b(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/GraphResponse;)V

    return-void
.end method
