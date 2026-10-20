###### Class com.json.adapters.admob.banner.NativeTemplateType (com.ironsource.adapters.admob.banner.NativeTemplateType)
.class final enum Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
.super Ljava/lang/Enum;
.source "AdMobNativeBannerViewHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/admob/banner/NativeTemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field private static final NATIVE_TEMPLATE_NAME:Ljava/lang/String; = "nativeBannerTemplateName"

.field public static final enum NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_TEXT_CTA:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;


# instance fields
.field private final mAdChoicesPlacement:I

.field private final mHideCallToAction:Z

.field private final mHideVideoContent:Z

.field private final mLayoutId:I

.field private final mMediaAspectRatio:I


# direct methods
.method static constructor <clinit>()V
    .registers 27

    new-instance v8, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v9, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_basic_layout:I

    const-string v1, "NB_TMP_BASIC"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZII)V

    sput-object v8, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    new-instance v10, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    const-string v1, "NB_TMP_BASIC_LARGE"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZII)V

    sput-object v10, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    new-instance v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v14, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_icon_text_layout:I

    const-string v12, "NB_TMP_ICON_TEXT"

    const/4 v13, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZII)V

    sput-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    new-instance v1, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v22, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_text_cta_layout:I

    const-string v20, "NB_TMP_TEXT_CTA"

    const/16 v21, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v26}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZII)V

    sput-object v1, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_TEXT_CTA:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    new-instance v2, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v14, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_rect_layout:I

    const-string v12, "NB_TMP_RECT"

    const/4 v13, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZII)V

    sput-object v2, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v0, 0x4

    aput-object v2, v3, v0

    sput-object v3, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->$VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mLayoutId:I

    iput-boolean p4, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideCallToAction:Z

    iput-boolean p5, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideVideoContent:Z

    iput p6, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mAdChoicesPlacement:I

    iput p7, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mMediaAspectRatio:I

    return-void
.end method

.method public static createTemplateType(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_3b

    :sswitch_10
    const-string v0, "BANNER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v1, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v0, "LARGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v1, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v0, "RECTANGLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    packed-switch v1, :pswitch_data_6e

    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    :pswitch_41
    sget-object p1, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeBannerTemplateName"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_4d
    invoke-static {p0}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object p0
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_51} :catch_52

    return-object p0

    :catch_52
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    :pswitch_55
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    :pswitch_58
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x171242b1 -> :sswitch_31
        0x44dc31b -> :sswitch_26
        0x4b59da9 -> :sswitch_1b
        0x7458732c -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 2

    const-class v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 1

    sget-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->$VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object v0
.end method


# virtual methods
.method public getAdChoicesPlacement()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mAdChoicesPlacement:I

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mLayoutId:I

    return v0
.end method

.method public getMediaAspectRatio()I
    .registers 2

    iget v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mMediaAspectRatio:I

    return v0
.end method

.method public shouldHideCallToAction()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideCallToAction:Z

    return v0
.end method

.method public shouldHideVideoContent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideVideoContent:Z

    return v0
.end method
