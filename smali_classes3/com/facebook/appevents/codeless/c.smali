###### Class com.facebook.appevents.codeless.c (com.facebook.appevents.codeless.c)
.class public final synthetic Lcom/facebook/appevents/codeless/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/FetchedAppSettings;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/c;->a:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onShake()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/appevents/codeless/c;->a:Lcom/facebook/internal/FetchedAppSettings;

    iget-object v1, p0, Lcom/facebook/appevents/codeless/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/CodelessManager;->b(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    return-void
.end method
