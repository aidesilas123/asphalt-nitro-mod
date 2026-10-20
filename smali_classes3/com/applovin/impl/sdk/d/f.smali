###### Class com.applovin.impl.sdk.d.f (com.applovin.impl.sdk.d.f)
.class public Lcom/applovin/impl/sdk/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aSP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aSR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final aSS:Lcom/applovin/impl/sdk/d/f;

.field public static final aST:Lcom/applovin/impl/sdk/d/f;

.field public static final aSU:Lcom/applovin/impl/sdk/d/f;

.field public static final aSV:Lcom/applovin/impl/sdk/d/f;

.field public static final aSW:Lcom/applovin/impl/sdk/d/f;

.field public static final aSX:Lcom/applovin/impl/sdk/d/f;

.field public static final aSY:Lcom/applovin/impl/sdk/d/f;

.field public static final aSZ:Lcom/applovin/impl/sdk/d/f;

.field public static final aTa:Lcom/applovin/impl/sdk/d/f;

.field public static final aTb:Lcom/applovin/impl/sdk/d/f;

.field public static final aTc:Lcom/applovin/impl/sdk/d/f;

.field public static final aTd:Lcom/applovin/impl/sdk/d/f;

.field public static final aTe:Lcom/applovin/impl/sdk/d/f;

.field public static final aTf:Lcom/applovin/impl/sdk/d/f;

.field public static final aTg:Lcom/applovin/impl/sdk/d/f;

.field public static final aTh:Lcom/applovin/impl/sdk/d/f;

.field public static final aTi:Lcom/applovin/impl/sdk/d/f;

.field public static final aTj:Lcom/applovin/impl/sdk/d/f;

.field public static final aTk:Lcom/applovin/impl/sdk/d/f;

.field public static final aTl:Lcom/applovin/impl/sdk/d/f;


# instance fields
.field private final aSQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSP:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSR:Ljava/util/Set;

    const-string v0, "ad_req"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSS:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aST:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "max_ad_imp"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSU:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_session_start"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSV:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_imp_session"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSW:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "max_ad_imp_session"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSX:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "cached_files_expired"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSY:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "cache_drop_count"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aSZ:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "sdk_reset_state_count"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTa:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_response_process_failures"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTb:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "response_process_failures"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTc:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "incent_failed_to_display_count"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTd:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "app_paused_and_resumed"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTe:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_rendered_with_mismatched_sdk_key"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTf:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "ad_shown_outside_app_count"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTg:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_req"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTh:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_ad_response_process_failures"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTi:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_no_fill"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTj:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_adapter_load_failed"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTk:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "med_waterfall_ad_invalid_response"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/f;->aTl:Lcom/applovin/impl/sdk/d/f;

    const-string v0, "fullscreen_ad_nil_vc_count"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    const-string v0, "applovin_bundle_missing"

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/f;->do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/f;->aSQ:Ljava/lang/String;

    return-void
.end method

.method public static JV()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/d/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/sdk/d/f;->aSR:Ljava/util/Set;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/applovin/impl/sdk/d/f;->aSP:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/applovin/impl/sdk/d/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/f;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    sget-object p0, Lcom/applovin/impl/sdk/d/f;->aSR:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-object v0

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key has already been used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key name specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static do(Ljava/lang/String;)Lcom/applovin/impl/sdk/d/f;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;Z)Lcom/applovin/impl/sdk/d/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->aSQ:Ljava/lang/String;

    return-object v0
.end method
