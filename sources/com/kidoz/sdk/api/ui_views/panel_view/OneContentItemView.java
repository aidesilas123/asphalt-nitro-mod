package com.kidoz.sdk.api.ui_views.panel_view;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kidoz.sdk.api.general.assets_handling.AssetUtil;
import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.picasso_related.PicassoOk;
import com.kidoz.sdk.api.structure.ContentItem;
import com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper;
import com.squareup.imagelib.t;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class OneContentItemView extends LinearLayout {
    private RelativeLayout mContainer;
    private ContentItem mContentItem;
    public int mHeight;
    private File mImageFile;
    private TextView mItemName;
    private ImageView mItemThumbnail;
    private ImageView mItemTypeIcon;
    private LinearLayout mNameContainerLay;
    private ImageView mPromotedIndication;
    private RelativeLayout.LayoutParams mPromotedIndicationParams;
    private JSONObject mProperties;
    private FrameLayout mWebViewContainerLayout;
    public int mWidth;
    private FrameLayout.LayoutParams webViewParams;

    public OneContentItemView(JSONObject jSONObject, Context context, int i, int i2) {
        super(context);
        this.mWidth = 0;
        this.mHeight = 0;
        this.mWidth = i;
        this.mHeight = i2;
        this.mProperties = jSONObject;
        initView();
    }

    private void initContainer() {
        this.mContainer = new RelativeLayout(getContext());
        addView(this.mContainer, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void initItemName() {
        TextView textView = new TextView(getContext());
        this.mItemName = textView;
        textView.setMaxLines(1);
        this.mItemName.setEllipsize(TextUtils.TruncateAt.END);
        this.mItemName.setTextColor(Color.parseColor("#d7dee0"));
        this.mItemName.setGravity(16);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.mNameContainerLay = linearLayout;
        linearLayout.setId(Utils.generateViewId());
        this.mNameContainerLay.setBackgroundColor(Color.parseColor("#cb3b3a37"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.mNameContainerLay.addView(this.mItemName, layoutParams);
        int i = this.mWidth;
        int i2 = (int) (i * 0.048f);
        int i3 = (int) (i * 0.025f);
        this.mItemName.setTextSize(0, i2);
        layoutParams.setMargins(Utils.dpTOpx(getContext(), 5.0f), i3, Utils.dpTOpx(getContext(), 5.0f), i3);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        this.mContainer.addView(this.mNameContainerLay, layoutParams2);
    }

    private void initItemThumbnail() {
        ImageView imageView = new ImageView(getContext());
        this.mItemThumbnail = imageView;
        imageView.setId(Utils.generateViewId());
        this.mItemThumbnail.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mContainer.addView(this.mItemThumbnail, new RelativeLayout.LayoutParams(this.mWidth, this.mHeight));
    }

    private void initItemTypeIcon() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        layoutParams.addRule(2, this.mNameContainerLay.getId());
        this.mContainer.addView(relativeLayout, layoutParams);
        ImageView imageView = new ImageView(getContext());
        this.mItemTypeIcon = imageView;
        imageView.setId(Utils.generateViewId());
        this.mItemTypeIcon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.width = (int) (this.mWidth * 0.4f);
        layoutParams2.height = (int) (this.mHeight * 0.4f);
        layoutParams2.addRule(13);
        relativeLayout.addView(this.mItemTypeIcon, layoutParams2);
    }

    private void initPromotedIndication() {
        ImageView imageView = new ImageView(getContext());
        this.mPromotedIndication = imageView;
        imageView.setId(Utils.generateViewId());
        this.mPromotedIndication.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        this.mPromotedIndicationParams = layoutParams;
        layoutParams.width = (int) (this.mWidth * ((float) this.mProperties.optDouble(StyleParser.PROMOTED_INDICATOR_SIZE, 0.20000000298023224d)));
        this.mPromotedIndicationParams.height = (int) (r0.width * ((float) this.mProperties.optDouble(StyleParser.PROMOTED_INDICATOR_RATIO, 0.25d)));
        this.mPromotedIndicationParams.addRule(5, this.mItemThumbnail.getId());
        this.mPromotedIndicationParams.addRule(6, this.mItemThumbnail.getId());
        this.mContainer.addView(this.mPromotedIndication, this.mPromotedIndicationParams);
    }

    private void initView() {
        initContainer();
        initItemThumbnail();
        initItemName();
        initItemTypeIcon();
        initPromotedIndication();
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mWebViewContainerLayout = frameLayout;
        this.mContainer.addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void loadBackgroundColor() {
        setBackgroundColor(-1);
        ContentItem contentItem = this.mContentItem;
        if (contentItem != null) {
            setBackgroundColor(contentItem.getPaliteBgColor());
        }
    }

    private void loadIteNameAndSetTextColor() {
        ContentItem contentItem = this.mContentItem;
        if (contentItem != null) {
            this.mItemName.setText(contentItem.getName());
        }
    }

    private void loadItemTypeIcon() {
        this.mItemTypeIcon.setImageBitmap(null);
        ContentItem contentItem = this.mContentItem;
        if (contentItem == null || this.mItemTypeIcon == null || contentItem.getSecThumb() == null || this.mContentItem.getSecThumb().equals("")) {
            return;
        }
        PicassoOk.getPicasso(getContext()).k(this.mContentItem.getSecThumb()).g(this.mItemTypeIcon);
    }

    private void loadThumbnail() {
        this.mItemThumbnail.setImageBitmap(null);
        ContentItem contentItem = this.mContentItem;
        if (contentItem == null || contentItem.getThumb() == null || this.mContentItem.getThumb().equals("") || this.mWidth <= 0 || this.mHeight <= 0 || this.mContentItem.getThumb().startsWith("http://")) {
            return;
        }
        PicassoOk.getPicasso(getContext()).k(this.mContentItem.getThumb()).k(this.mWidth, this.mHeight).a().g(this.mItemThumbnail);
    }

    private void setPromotedIndication() {
        File file;
        if (this.mProperties != null) {
            this.mImageFile = AssetUtil.getAssetFile(getContext(), this.mProperties.optString(StyleParser.PROMOTED_INDICATOR_URL, null));
        }
        this.mPromotedIndication.setImageBitmap(null);
        ContentItem contentItem = this.mContentItem;
        if (contentItem == null || !contentItem.isPromoted() || (file = this.mImageFile) == null || !file.exists()) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = this.mPromotedIndicationParams;
        if (layoutParams.width <= 0 || layoutParams.height <= 0) {
            return;
        }
        t tVarJ = PicassoOk.getPicasso(getContext()).j(this.mImageFile);
        RelativeLayout.LayoutParams layoutParams2 = this.mPromotedIndicationParams;
        tVarJ.k(layoutParams2.width, layoutParams2.height).b().g(this.mPromotedIndication);
    }

    public void applyViewSettingsByContentType(ContentType contentType) {
        if (contentType == null || contentType != ContentType.HTML) {
            this.mNameContainerLay.setVisibility(0);
            this.mItemTypeIcon.setVisibility(0);
        } else {
            this.mNameContainerLay.setVisibility(4);
            this.mItemTypeIcon.setVisibility(4);
        }
    }

    public void clearActiveWebView() {
        this.mWebViewContainerLayout.removeAllViews();
    }

    public void setActiveWebView(HtmlViewWrapper htmlViewWrapper) {
        this.mWebViewContainerLayout.removeAllViews();
        ViewGroup viewGroup = (ViewGroup) htmlViewWrapper.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        if (this.webViewParams == null) {
            this.webViewParams = new FrameLayout.LayoutParams(-1, -1);
        }
        this.mWebViewContainerLayout.addView(htmlViewWrapper, this.webViewParams);
    }

    public void setData(ContentItem contentItem) {
        this.mContentItem = contentItem;
        loadBackgroundColor();
        loadThumbnail();
        loadItemTypeIcon();
        setPromotedIndication();
        ContentItem contentItem2 = this.mContentItem;
        if (contentItem2 != null) {
            if (contentItem2.getIsHideTextOverlay()) {
                this.mNameContainerLay.setVisibility(8);
            } else {
                loadIteNameAndSetTextColor();
                this.mNameContainerLay.setVisibility(0);
            }
        }
    }
}
