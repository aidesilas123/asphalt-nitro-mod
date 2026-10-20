###### Class com.iab.omid.library.applovin.utils.c.a (com.iab.omid.library.applovin.utils.c$a)
.class synthetic Lcom/iab/omid/library/applovin/utils/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/applovin/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/applovin/adsession/OutputDeviceStatus;->values()[Lcom/iab/omid/library/applovin/adsession/OutputDeviceStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iab/omid/library/applovin/utils/c$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/iab/omid/library/applovin/adsession/OutputDeviceStatus;->NOT_DETECTED:Lcom/iab/omid/library/applovin/adsession/OutputDeviceStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
