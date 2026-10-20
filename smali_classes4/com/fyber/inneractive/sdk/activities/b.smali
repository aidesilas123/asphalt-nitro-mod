###### Class com.fyber.inneractive.sdk.activities.b (com.fyber.inneractive.sdk.activities.b)
.class public Lcom/fyber/inneractive/sdk/activities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/activities/b;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/activities/b;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
