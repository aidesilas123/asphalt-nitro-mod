###### Class com.facebook.appevents.codeless.d (com.facebook.appevents.codeless.d)
.class public final synthetic Lcom/facebook/appevents/codeless/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/codeless/CodelessMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/d;->a:Lcom/facebook/appevents/codeless/CodelessMatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/appevents/codeless/d;->a:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->a(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    return-void
.end method
