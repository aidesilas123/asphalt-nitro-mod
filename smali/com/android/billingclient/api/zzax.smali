###### Class com.android.billingclient.api.zzax (com.android.billingclient.api.zzax)
.class public final synthetic Lcom/android/billingclient/api/zzax;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/datatransport/b;


# static fields
.field public static final synthetic a:Lcom/android/billingclient/api/zzax;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/billingclient/api/zzax;

    invoke-direct {v0}, Lcom/android/billingclient/api/zzax;-><init>()V

    sput-object v0, Lcom/android/billingclient/api/zzax;->a:Lcom/android/billingclient/api/zzax;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzak;->zzc()[B

    move-result-object p1

    return-object p1
.end method
