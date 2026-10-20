###### Class com.kidoz.sdk.api.ui_views.panel_view.LocalAssetHelper (com.kidoz.sdk.api.ui_views.panel_view.LocalAssetHelper)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"


# instance fields
.field public closeBtnAssetBg:Ljava/io/File;

.field public closeBtnAssetFrg:Ljava/io/File;

.field public legacyBtnCloseAsset:Ljava/io/File;

.field public legacyBtnDefaultOpenSponsoredAsset:Ljava/io/File;

.field public legacyBtnOpenAsset:Ljava/io/File;

.field public openBtnAssetBg:Ljava/io/File;

.field public openBtnAssetFrg:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLegacyParams()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnOpenAsset:Ljava/io/File;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_a
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnCloseAsset:Ljava/io/File;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnDefaultOpenSponsoredAsset:Ljava/io/File;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method
