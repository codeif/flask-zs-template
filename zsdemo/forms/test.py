from flask_zs.forms import JSONForm
from flask_zs.forms.fields import StringField
from flask_zs.forms.validators import PhoneNumber


class TestForm(JSONForm):
    phone = StringField("手机号", [PhoneNumber()])
