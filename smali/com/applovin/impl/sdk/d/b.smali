###### Class com.applovin.impl.sdk.d.b (com.applovin.impl.sdk.d.b)
.class public Lcom/applovin/impl/sdk/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aSA:Lcom/applovin/impl/sdk/d/b;

.field public static final aSB:Lcom/applovin/impl/sdk/d/b;

.field public static final aSC:Lcom/applovin/impl/sdk/d/b;

.field public static final aSD:Lcom/applovin/impl/sdk/d/b;

.field public static final aSE:Lcom/applovin/impl/sdk/d/b;

.field private static final aSb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final aSc:Lcom/applovin/impl/sdk/d/b;

.field public static final aSd:Lcom/applovin/impl/sdk/d/b;

.field public static final aSe:Lcom/applovin/impl/sdk/d/b;

.field public static final aSf:Lcom/applovin/impl/sdk/d/b;

.field public static final aSg:Lcom/applovin/impl/sdk/d/b;

.field public static final aSh:Lcom/applovin/impl/sdk/d/b;

.field public static final aSi:Lcom/applovin/impl/sdk/d/b;

.field public static final aSj:Lcom/applovin/impl/sdk/d/b;

.field public static final aSk:Lcom/applovin/impl/sdk/d/b;

.field public static final aSl:Lcom/applovin/impl/sdk/d/b;

.field public static final aSm:Lcom/applovin/impl/sdk/d/b;

.field public static final aSn:Lcom/applovin/impl/sdk/d/b;

.field public static final aSo:Lcom/applovin/impl/sdk/d/b;

.field public static final aSp:Lcom/applovin/impl/sdk/d/b;

.field public static final aSq:Lcom/applovin/impl/sdk/d/b;

.field public static final aSr:Lcom/applovin/impl/sdk/d/b;

.field public static final aSs:Lcom/applovin/impl/sdk/d/b;

.field public static final aSt:Lcom/applovin/impl/sdk/d/b;

.field public static final aSu:Lcom/applovin/impl/sdk/d/b;

.field public static final aSv:Lcom/applovin/impl/sdk/d/b;

.field public static final aSw:Lcom/applovin/impl/sdk/d/b;

.field public static final aSx:Lcom/applovin/impl/sdk/d/b;

.field public static final aSy:Lcom/applovin/impl/sdk/d/b;

.field public static final aSz:Lcom/applovin/impl/sdk/d/b;


# instance fields
.field private final aSa:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSb:Ljava/util/Set;

    const-string v0, "sisw"

    const-string v1, "IS_STREAMING_WEBKIT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "surw"

    const-string v1, "UNABLE_TO_RETRIEVE_WEBKIT_HTML_STRING"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "surp"

    const-string v1, "UNABLE_TO_PERSIST_WEBKIT_HTML_PLACEMENT_REPLACED_STRING"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "swhp"

    const-string v1, "SUCCESSFULLY_PERSISTED_WEBKIT_HTML_STRING"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "skr"

    const-string v1, "STOREKIT_REDIRECTED"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sklf"

    const-string v1, "STOREKIT_LOAD_FAILURE"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "skps"

    const-string v1, "STOREKIT_PRELOAD_SKIPPED"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sas"

    const-string v1, "AD_SOURCE"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSc:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "srt"

    const-string v1, "AD_RENDER_TIME"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSd:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sft"

    const-string v1, "AD_FETCH_TIME"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSe:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sfs"

    const-string v1, "AD_FETCH_SIZE"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSf:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sadb"

    const-string v1, "AD_DOWNLOADED_BYTES"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSg:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sacb"

    const-string v1, "AD_CACHED_BYTES"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSh:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stdl"

    const-string v1, "TIME_TO_DISPLAY_FROM_LOAD"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSi:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stdi"

    const-string v1, "TIME_TO_DISPLAY_FROM_INIT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSj:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "snas"

    const-string v1, "AD_NUMBER_IN_SESSION"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSk:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "snat"

    const-string v1, "AD_NUMBER_TOTAL"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSl:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stah"

    const-string v1, "TIME_AD_HIDDEN_FROM_SHOW"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSm:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stas"

    const-string v1, "TIME_TO_SKIP_FROM_SHOW"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSn:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stac"

    const-string v1, "TIME_TO_CLICK_FROM_SHOW"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSo:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stbe"

    const-string v1, "TIME_TO_EXPAND_FROM_SHOW"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSp:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stbc"

    const-string v1, "TIME_TO_CONTRACT_FROM_SHOW"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSq:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "suvs"

    const-string v1, "INTERSTITIAL_USED_VIDEO_STREAM"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSr:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "sugs"

    const-string v1, "AD_USED_GRAPHIC_STREAM"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSs:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "svpv"

    const-string v1, "INTERSTITIAL_VIDEO_PERCENT_VIEWED"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSt:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "stpd"

    const-string v1, "INTERSTITIAL_PAUSED_DURATION"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSu:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "shsc"

    const-string v1, "HTML_RESOURCE_CACHE_SUCCESS_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSv:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "shfc"

    const-string v1, "HTML_RESOURCE_CACHE_FAILURE_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSw:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "schc"

    const-string v1, "AD_CANCELLED_HTML_CACHING"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSx:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "smwm"

    const-string v1, "AD_SHOWN_IN_MULTIWINDOW_MODE"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSy:Lcom/applovin/impl/sdk/d/b;

    const-string v0, "vssc"

    const-string v1, "VIDEO_STREAM_STALLED_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSz:Lcom/applovin/impl/sdk/d/b;

    const-string/jumbo v0, "wvem"

    const-string v1, "WEB_VIEW_ERROR_MESSAGES"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSA:Lcom/applovin/impl/sdk/d/b;

    const-string/jumbo v0, "wvhec"

    const-string v1, "WEB_VIEW_HTTP_ERROR_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSB:Lcom/applovin/impl/sdk/d/b;

    const-string/jumbo v0, "wvrec"

    const-string v1, "WEB_VIEW_RENDER_ERROR_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSC:Lcom/applovin/impl/sdk/d/b;

    const-string/jumbo v0, "wvsem"

    const-string v1, "WEB_VIEW_SSL_ERROR_MESSAGES"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSD:Lcom/applovin/impl/sdk/d/b;

    const-string/jumbo v0, "wvruc"

    const-string v1, "WEB_VIEW_RENDERER_UNRESPONSIVE_COUNT"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/b;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/d/b;->aSE:Lcom/applovin/impl/sdk/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/b;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/b;->aSa:Ljava/lang/String;

    return-void
.end method

.method private static J(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/b;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/applovin/impl/sdk/d/b;->aSb:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/applovin/impl/sdk/d/b;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No debug name specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
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

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No key name specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
