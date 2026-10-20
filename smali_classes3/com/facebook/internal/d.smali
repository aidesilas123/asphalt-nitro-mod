###### Class com.facebook.internal.d (com.facebook.internal.d)
.class public final synthetic Lcom/facebook/internal/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/FacebookWebFallbackDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/d;->a:Lcom/facebook/internal/FacebookWebFallbackDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/d;->a:Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-static {v0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->d(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    return-void
.end method
