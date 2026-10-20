###### Class com.kidoz.sdk.api.PanelView.AnonymousClass2 (com.kidoz.sdk.api.PanelView$2)
.class Lcom/kidoz/sdk/api/PanelView$2;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/PanelView;->validateLayoutAndAssets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/PanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/PanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView$2;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseFinished(Z)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/kidoz/sdk/api/PanelView$2;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/PanelView;->access$200(Lcom/kidoz/sdk/api/PanelView;)V

    :cond_7
    return-void
.end method
