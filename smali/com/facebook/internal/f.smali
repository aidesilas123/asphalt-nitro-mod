###### Class com.facebook.internal.f (com.facebook.internal.f)
.class public final synthetic Lcom/facebook/internal/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/f;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/internal/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/f;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->b(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
