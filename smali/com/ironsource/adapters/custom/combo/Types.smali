###### Class com.json.adapters.custom.combo.Types (com.ironsource.adapters.custom.combo.Types)
.class public Lcom/ironsource/adapters/custom/combo/Types;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/custom/combo/Types$AdLoadFailedReason;,
        Lcom/ironsource/adapters/custom/combo/Types$AdShowFailedReason;,
        Lcom/ironsource/adapters/custom/combo/Types$AdType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.adapters.custom.combo.Types.AdLoadFailedReason (com.ironsource.adapters.custom.combo.Types$AdLoadFailedReason)
.class public interface abstract Lcom/ironsource/adapters/custom/combo/Types$AdLoadFailedReason;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/custom/combo/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdLoadFailedReason"
.end annotation


# static fields
.field public static final Invalid_Server_Response:I = 0x0

.field public static final Network_Error:I = 0x1

.field public static final No_Ad_Available:I = 0x2

###### Class com.ironsource.adapters.custom.combo.Types.AdShowFailedReason (com.ironsource.adapters.custom.combo.Types$AdShowFailedReason)
.class public interface abstract Lcom/ironsource/adapters/custom/combo/Types$AdShowFailedReason;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/custom/combo/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdShowFailedReason"
.end annotation


# static fields
.field public static final Already_Showing:I = 0x3

.field public static final Cancelled:I = 0x4

.field public static final Invalid_Server_Response:I = 0x0

.field public static final Network_Error:I = 0x1

.field public static final No_Ad_Available:I = 0x2

.field public static final WebView_Crash:I = 0x5

###### Class com.ironsource.adapters.custom.combo.Types.AdType (com.ironsource.adapters.custom.combo.Types$AdType)
.class public interface abstract Lcom/ironsource/adapters/custom/combo/Types$AdType;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/custom/combo/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdType"
.end annotation


# static fields
.field public static final Banner:I = 0x0

.field public static final Incentivized:I = 0x2

.field public static final Interstitial:I = 0x1
