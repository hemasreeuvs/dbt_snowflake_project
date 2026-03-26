{ % set cols = []}

Select
{% for col om cols  %%}
    {{col}} 
    { % if not loop.last %} ,{% endif %}
{% endfor %}
from {{ref('bronze_bookings')}}