###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass27 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$27)
.class synthetic Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$27;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/ContentType;->values()[Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$27;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$27;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
