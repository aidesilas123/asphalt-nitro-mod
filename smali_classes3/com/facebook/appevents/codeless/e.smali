###### Class com.facebook.appevents.codeless.e (com.facebook.appevents.codeless.e)
.class public final synthetic Lcom/facebook/appevents/codeless/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/ViewIndexer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/e;->b:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/appevents/codeless/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/codeless/e;->b:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->a(Ljava/lang/String;Lcom/facebook/appevents/codeless/ViewIndexer;)V

    return-void
.end method
