###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozTopBar$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$1;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z

    move-result p1

    return p1
.end method
