###### Class com.bytedance.sdk.openadsdk.api.PAGConstant (com.bytedance.sdk.openadsdk.api.PAGConstant)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/api/PAGConstant;
.super Ljava/lang/Object;
.source "PAGConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;,
        Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGDoNotSellType;,
        Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGChildDirectedType;
    }
.end annotation

###### Class com.bytedance.sdk.openadsdk.api.PAGConstant.PAGChildDirectedType (com.bytedance.sdk.openadsdk.api.PAGConstant$PAGChildDirectedType)
.class public interface abstract annotation Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGChildDirectedType;
.super Ljava/lang/Object;
.source "PAGConstant.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/PAGConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PAGChildDirectedType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final PAG_CHILD_DIRECTED_TYPE_CHILD:I = 0x1

.field public static final PAG_CHILD_DIRECTED_TYPE_DEFAULT:I = -0x1

.field public static final PAG_CHILD_DIRECTED_TYPE_NON_CHILD:I

###### Class com.bytedance.sdk.openadsdk.api.PAGConstant.PAGDoNotSellType (com.bytedance.sdk.openadsdk.api.PAGConstant$PAGDoNotSellType)
.class public interface abstract annotation Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGDoNotSellType;
.super Ljava/lang/Object;
.source "PAGConstant.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/PAGConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PAGDoNotSellType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final PAG_DO_NOT_SELL_TYPE_DEFAULT:I = -0x1

.field public static final PAG_DO_NOT_SELL_TYPE_NOT_SELL:I = 0x1

.field public static final PAG_DO_NOT_SELL_TYPE_SELL:I

###### Class com.bytedance.sdk.openadsdk.api.PAGConstant.PAGGDPRConsentType (com.bytedance.sdk.openadsdk.api.PAGConstant$PAGGDPRConsentType)
.class public interface abstract annotation Lcom/bytedance/sdk/openadsdk/api/PAGConstant$PAGGDPRConsentType;
.super Ljava/lang/Object;
.source "PAGConstant.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/PAGConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PAGGDPRConsentType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final PAG_GDPR_CONSENT_TYPE_CONSENT:I = 0x1

.field public static final PAG_GDPR_CONSENT_TYPE_DEFAULT:I = -0x1

.field public static final PAG_GDPR_CONSENT_TYPE_NO_CONSENT:I
